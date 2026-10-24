# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da92535de1d57816a95074fda348490d170507beff20f6814309b28046fc05cc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--da6b9bbaad9f7ce65f165da9",
  "source": {
    "blob": "81e924b6b9f68408e318b24af5f4c48c2a395a45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 320,
    "path": "GRWTSK/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da6b9bbaad9f7ce65f165da994be09132c48c7099ea368a8e939775e1e486009",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da92535de1d57816a95074fda348490d170507beff20f6814309b28046fc05cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SMul (Localization S) (LocalizedModule S M)
    where smul f x :=
    (Localization.liftOn f
      (fun r s =>
        (liftOn x (fun p => (mk (r • p.1) (s * p.2)))
          (by
            rintro ⟨m1, t1⟩ ⟨m2, t2⟩ ⟨u, h⟩
            refine' mk_eq.mpr ⟨u, _⟩
            have h' := congr_arg ((· • ·) (s • r)) h
            simp only [← mul_smul, smul_eq_mul, mul_comm, mul_left_comm, Submonoid.smul_def,
              Submonoid.coe_mul] at h' ⊢
            rw [h'])))
      (by
        induction' x using LocalizedModule.induction_on with m t
        rintro r r' s s' h
        simp only [liftOn_mk, liftOn_mk, mk_eq]
        obtain ⟨u, eq1⟩ := Localization.r_iff_exists.mp h
        use u
        have eq1' := congr_arg (· • t • m) eq1
        simp only [← mul_smul, smul_assoc, Submonoid.smul_def, Submonoid.coe_mul] at eq1' ⊢
        ring_nf at eq1' ⊢
        rw [eq1']))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e924b6b9f68408e318b24af5f4c48c2a395a45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
