# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26f854b0a3fd8483aeb0f3df61bf74391d1972211b7dc7c0f50bd445ff28d549",
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
  "slug": "instance--5aca0e7130d3e870e8e6ac09",
  "source": {
    "blob": "5139abdca48ff79a42dc6ac52e51389e163ff1f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant774ccb8bd7537010d4e3ea396eaf3a398f18fd7a111536468a8625f1fe4da47a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aca0e7130d3e870e8e6ac09254eca90319fc3d87cf671b452ce34efd9599282",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant774ccb8bd7537010d4e3ea396eaf3a398f18fd7a111536468a8625f1fe4da47a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26f854b0a3fd8483aeb0f3df61bf74391d1972211b7dc7c0f50bd445ff28d549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Rxc.LawfulHasSize UInt32 where
  size_eq_zero_of_not_le lo hi := by
    cases lo
    simpa [rxcHasSize_eq_toBitVec, UInt32.lt_iff_toBitVec_lt] using
      Rxc.LawfulHasSize.size_eq_zero_of_not_le (α := BitVec 32) _ _
  size_eq_one_of_succ?_eq_none lo hi := by
    cases lo
    simpa [rxcHasSize_eq_toBitVec, UInt32.le_iff_toBitVec_le, succ?_ofBitVec] using
      Rxc.LawfulHasSize.size_eq_one_of_succ?_eq_none (α := BitVec 32) _ _
  size_eq_succ_of_succ?_eq_some lo hi x := by
    cases lo; cases x
    simpa [rxcHasSize_eq_toBitVec, UInt32.le_iff_toBitVec_le, ← UInt32.toBitVec_inj, succ?] using
      Rxc.LawfulHasSize.size_eq_succ_of_succ?_eq_some (α := BitVec 32) _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant774ccb8bd7537010d4e3ea396eaf3a398f18fd7a111536468a8625f1fe4da47a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant774ccb8bd7537010d4e3ea396eaf3a398f18fd7a111536468a8625f1fe4da47a.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5139abdca48ff79a42dc6ac52e51389e163ff1f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
