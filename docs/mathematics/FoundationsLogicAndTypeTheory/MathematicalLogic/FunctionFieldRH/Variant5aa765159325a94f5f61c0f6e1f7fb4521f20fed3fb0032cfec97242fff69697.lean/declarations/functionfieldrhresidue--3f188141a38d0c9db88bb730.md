# functionFieldRHResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c893a4ca0ecf74f56d55a06b74b6720e9856b06cbae2276f70381c4366f68bf6",
  "kind": "def",
  "lexical_name": "functionFieldRHResidue",
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
  "slug": "functionfieldrhresidue--3f188141a38d0c9db88bb730",
  "source": {
    "blob": "17bdf6d8da2a0388cf4628365bab290ff128cb05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f188141a38d0c9db88bb73002bf547e49b283f87ac4cfb806077de01148b335",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c893a4ca0ecf74f56d55a06b74b6720e9856b06cbae2276f70381c4366f68bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functionFieldRHResidue : Think.Residue :=
  { target := FWR.Target.OpenConjectureLedger
    atomId := "function_field.rh.solved_reference_not_imported"
    kind := FWR.ResidueKind.externalTheoremNotImported
    blocks :=
      "Function-field RH is a solved external theorem family, but no checked Lean proof/import is present in this repository"
    clearsBy :=
      "checked Lean proof/import of the required Weil/Deligne function-field RH statement, or retained solved-reference annotation" }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variant5aa765159325a94f5f61c0f6e1f7fb4521f20fed3fb0032cfec97242fff69697.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17bdf6d8da2a0388cf4628365bab290ff128cb05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
