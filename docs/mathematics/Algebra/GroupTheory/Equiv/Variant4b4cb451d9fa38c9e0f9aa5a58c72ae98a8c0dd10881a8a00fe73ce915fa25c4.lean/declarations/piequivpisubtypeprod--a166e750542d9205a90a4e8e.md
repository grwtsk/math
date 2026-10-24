# piEquivPiSubtypeProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:760ceb6080153a0cc24d7437a392534ad210416ed08e45a5a32f07a7a3f382ce",
  "kind": "def",
  "lexical_name": "piEquivPiSubtypeProd",
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
  "slug": "piequivpisubtypeprod--a166e750542d9205a90a4e8e",
  "source": {
    "blob": "cab8505236266135334d0eca30e49fed42a97545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 526,
    "path": "GRWTSK/Algebra/GroupTheory/Equiv/Variant4b4cb451d9fa38c9e0f9aa5a58c72ae98a8c0dd10881a8a00fe73ce915fa25c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a166e750542d9205a90a4e8e8cccd4b8b05b9c1084c2fa2da8e770797c57d3ed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equiv/Variant4b4cb451d9fa38c9e0f9aa5a58c72ae98a8c0dd10881a8a00fe73ce915fa25c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:760ceb6080153a0cc24d7437a392534ad210416ed08e45a5a32f07a7a3f382ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piEquivPiSubtypeProd {ι : Type*} (p : ι → Prop) [DecidablePred p] (Y : ι → Type*)
    [∀ i, NonUnitalNonAssocSemiring (Y i)] :
    ((i : ι) → Y i) ≃+* ((i : { x : ι // p x }) → Y i) × ((i : { x : ι // ¬p x }) → Y i) where
  toEquiv := Equiv.piEquivPiSubtypeProd p Y
  map_mul' _ _ := rfl
  map_add' _ _ := rfl

/-- Product of ring equivalences. This is `Equiv.prodCongr` as a `RingEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equiv/Variant4b4cb451d9fa38c9e0f9aa5a58c72ae98a8c0dd10881a8a00fe73ce915fa25c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equiv/Variant4b4cb451d9fa38c9e0f9aa5a58c72ae98a8c0dd10881a8a00fe73ce915fa25c4.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab8505236266135334d0eca30e49fed42a97545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
