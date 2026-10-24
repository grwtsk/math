# allPrimitiveResidues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7950eb273574ab12bf3de38e284afe27fa0e3e2832138d634b8b5974b5d6eb8",
  "kind": "def",
  "lexical_name": "allPrimitiveResidues",
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
  "slug": "allprimitiveresidues--3630631ecc1e13a1e4696791",
  "source": {
    "blob": "0655f929efb6a8dbff94473be5b8f307d1a04528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1541,
    "line": 1539,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante50d46927080ba1a40e33a2945758cf6debd8d67083e6c72492f79a07a96ac26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3630631ecc1e13a1e4696791242a99092d0ea39b3d8d55c3bbf4798fe54358f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante50d46927080ba1a40e33a2945758cf6debd8d67083e6c72492f79a07a96ac26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7950eb273574ab12bf3de38e284afe27fa0e3e2832138d634b8b5974b5d6eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1539–1541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allPrimitiveResidues : List Think.Residue :=
  allPrimitives.map primitiveResidue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante50d46927080ba1a40e33a2945758cf6debd8d67083e6c72492f79a07a96ac26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Primitives/Variante50d46927080ba1a40e33a2945758cf6debd8d67083e6c72492f79a07a96ac26.lean#L1539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0655f929efb6a8dbff94473be5b8f307d1a04528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
