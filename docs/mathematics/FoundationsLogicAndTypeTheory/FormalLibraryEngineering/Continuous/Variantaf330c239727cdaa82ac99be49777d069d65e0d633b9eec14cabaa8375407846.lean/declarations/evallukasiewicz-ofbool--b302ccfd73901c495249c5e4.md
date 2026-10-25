# evalLukasiewicz_ofBool

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48e4a1c3c27635d4d8a7e340d8e180b7ee934809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65d73dd6-c963-abf0-60d7-6b1a4951c017",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7c9c2ee-af44-740a-ce6d-51234520896d",
  "kind": "theorem",
  "lexical_name": "evalLukasiewicz_ofBool",
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
  "slug": "evallukasiewicz-ofbool--b302ccfd73901c495249c5e4",
  "source": {
    "blob": "48e4a1c3c27635d4d8a7e340d8e180b7ee934809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variantaf330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b302ccfd73901c495249c5e4e1a13f6db12de29cd33d8a98824a03ad7218239d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variantaf330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7c9c2ee-af44-740a-ce6d-51234520896d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalLukasiewicz_ofBool
    (ν : Valuation α)
    (t : Tree α) :
    EdgeRelaxation.evalLukasiewicz
        (fun a => EdgeRelaxation.UnitInterval.ofBool (ν a)) t =
      EdgeRelaxation.UnitInterval.ofBool (Tree.eval ν t) := by
  induction t with
  | var _a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih =>
      unfold EdgeRelaxation.evalLukasiewicz at ih ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ih]
  | conj p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | disj p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | impl p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]
  | nand p q ihp ihq =>
      unfold EdgeRelaxation.evalLukasiewicz at ihp ihq ⊢
      simp [EdgeRelaxation.ContinuousTree.eval, Tree.eval, ihp, ihq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variantaf330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variantaf330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e4a1c3c27635d4d8a7e340d8e180b7ee934809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
