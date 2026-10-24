# ofRootOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec043c9d0487a25546cca3f0772bc25e2790a5021f3bf57d99793c247b85304c",
  "kind": "def",
  "lexical_name": "ofRootOfUnity",
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
  "slug": "ofrootofunity--5a3d52e4a02804d28cba0b9c",
  "source": {
    "blob": "1a90d56bec1499206a106408f2986f8d90aecbd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a3d52e4a02804d28cba0b9c0b69309d1d66b73f98aedcfcb84168fc11c68001",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec043c9d0487a25546cca3f0772bc25e2790a5021f3bf57d99793c247b85304c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofRootOfUnity {ζ : Rˣ} (hζ : ζ ∈ rootsOfUnity (Fintype.card Mˣ) R)
    {g : Mˣ} (hg : ∀ x, x ∈ Subgroup.zpowers g) :
    MulChar M R := by
  have : orderOf ζ ∣ Fintype.card Mˣ :=
    orderOf_dvd_iff_pow_eq_one.mpr <| (mem_rootsOfUnity _ ζ).mp hζ
  refine ofUnitHom <| monoidHomOfForallMemZpowers hg <| this.trans <| dvd_of_eq ?_
  rw [orderOf_eq_card_of_forall_mem_zpowers hg, Nat.card_eq_fintype_card]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variantf1d437f5f9dd05a937361bad7476b2790f1fe08f5eb94eefe7a341df95eb20f9.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a90d56bec1499206a106408f2986f8d90aecbd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
