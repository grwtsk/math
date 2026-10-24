# rectangleDivisorSupportFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:922c60dc9847ce2e93084b724c16fd5f2e980a65362a9a977278da5762f0694d",
  "kind": "def",
  "lexical_name": "rectangleDivisorSupportFinset",
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
  "slug": "rectangledivisorsupportfinset--0eb6270c6dd00ef7e757f589",
  "source": {
    "blob": "e0baf2728e5113bccfaf0dd54321b9939eb05563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 59,
    "path": "GRWTSK/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eb6270c6dd00ef7e757f589e9462a69fae5f2da61a7466aab9acb44de143674",
  "verification": {
    "reference": "docs/verification/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:922c60dc9847ce2e93084b724c16fd5f2e980a65362a9a977278da5762f0694d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rectangleDivisorSupportFinset
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : MeromorphicOn f (closedRectangle z w)) : Finset ℂ :=
  (rectangleDivisor_support_finite hf).toFinset

@[surface_adapter, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0baf2728e5113bccfaf0dd54321b9939eb05563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
