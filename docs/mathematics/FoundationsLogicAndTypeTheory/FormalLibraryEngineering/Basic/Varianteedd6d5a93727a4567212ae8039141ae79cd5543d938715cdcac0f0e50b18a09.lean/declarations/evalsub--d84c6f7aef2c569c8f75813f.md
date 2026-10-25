# evalSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:391c070dbf4f3d0f5e6bf99057523653fcbad6bc6a5dcc2569c7bc969279f219",
  "kind": "def",
  "lexical_name": "evalSub",
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
  "slug": "evalsub--d84c6f7aef2c569c8f75813f",
  "source": {
    "blob": "199b4667a30b01ece8856acfe3e52a15791e68aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 639,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d84c6f7aef2c569c8f75813f84976a4dae284f648f63c722a23b14ea875a41bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:391c070dbf4f3d0f5e6bf99057523653fcbad6bc6a5dcc2569c7bc969279f219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalSub {α : Q(Type u)} (sα : Q(CommSemiring $α)) {a b : Q($α)}
    (rα : Q(Ring $α)) (va : ExSum sα a) (vb : ExSum sα b) :
    Lean.Core.CoreM <| Result (ExSum sα) q($a - $b) := do
  let ⟨_c, vc, pc⟩ ← evalNeg sα rα vb
  let ⟨d, vd, (pd : Q($a + $_c = $d))⟩ ← evalAdd sα va vc
  return ⟨d, vd, (q(sub_pf $pc $pd) : Expr)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianteedd6d5a93727a4567212ae8039141ae79cd5543d938715cdcac0f0e50b18a09.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199b4667a30b01ece8856acfe3e52a15791e68aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
