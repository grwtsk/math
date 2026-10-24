# mapRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a243d75e0693e6decd8ee9176d9eaa9ff4ae63ec9ab853eaef21582d103cd12",
  "kind": "def",
  "lexical_name": "mapRingHom",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "mapringhom--dec4eba9fc26e340048930f0",
  "source": {
    "blob": "eb19639a164d3ad5e76246d2aadb9f2d9aa4a653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 671,
    "path": "GRWTSK/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dec4eba9fc26e340048930f05818ab1124aac0ec80294b13bc03b5f9b48d20a8",
  "verification": {
    "reference": "docs/verification/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a243d75e0693e6decd8ee9176d9eaa9ff4ae63ec9ab853eaef21582d103cd12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapRingHom [RingHomClass F R[X] S[X]] (φ : F) (hφ : R[X]⁰ ≤ S[X]⁰.comap φ) :
    RatFunc R →+* RatFunc S :=
  { map φ hφ with
    map_zero' := by
      simp_rw [MonoidHom.toFun_eq_coe, ← ofFractionRing_zero, ← Localization.mk_zero (1 : R[X]⁰),
        ← Localization.mk_zero (1 : S[X]⁰), map_apply_ofFractionRing_mk, map_zero,
        Localization.mk_eq_mk', IsLocalization.mk'_zero]
    map_add' := by
      rintro ⟨x⟩ ⟨y⟩
      -- porting note: had to hint `induction` which induction principle to use
      induction x using Localization.rec
      induction y using Localization.rec
      · simp only [← ofFractionRing_add, Localization.add_mk, map_add, map_mul,
          MonoidHom.toFun_eq_coe, map_apply_ofFractionRing_mk, Submonoid.coe_mul]
        -- Porting note: `Submonoid.mk_mul_mk` couldn't be applied: motive incorrect,
        -- even though it is a rfl lemma.
        rfl
      · rfl
      · rfl }
#align ratfunc.map_ring_hom RatFunc.mapRingHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb19639a164d3ad5e76246d2aadb9f2d9aa4a653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
