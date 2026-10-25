# vectorAll_iff_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8ea93fa-15a5-d8cb-5d31-55332914ee01",
  "kind": "theorem",
  "lexical_name": "vectorAll_iff_forall",
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
  "slug": "vectorall-iff-forall--c27e0f22d7f9e8feaeae5a59",
  "source": {
    "blob": "820cddae33b51bb6a43f0e8d1dcc561776d9a272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c27e0f22d7f9e8feaeae5a5988ecb3514e7e0c968f45c40e4fa68fe99065f598",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8ea93fa-15a5-d8cb-5d31-55332914ee01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vectorAll_iff_forall : ∀ {n} (f : Vector3 α n → Prop), VectorAll n f ↔ ∀ v, f v
  | 0, _ => ⟨fun f0 v => v.nilElim f0, fun al => al []⟩
  | succ _, f =>
    (forall_congr' fun x => vectorAll_iff_forall fun v => f (x :: v)).trans
      ⟨fun al v => v.consElim al, fun al x v => al (x :: v)⟩

/-- `VectorAllP p v` is equivalent to `∀ i, p (v i)`, but unfolds directly to a conjunction,
  i.e. `VectorAllP p [0, 1, 2] = p 0 ∧ p 1 ∧ p 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Vector3/Variant272a2cbdfa02cd42aabbe529e2eb067bca1d11997cc8d664d2bbcfede0d72b03.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `820cddae33b51bb6a43f0e8d1dcc561776d9a272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
