# preservesLatticeLociOfDecodeEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31ebcfa23264ce3d595681505fe2de29ab49306973bab43773cbd40b609c7faf",
  "kind": "def",
  "lexical_name": "preservesLatticeLociOfDecodeEq",
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
  "slug": "preserveslatticelociofdecodeeq--db257ac745ed1cd2b5e55f12",
  "source": {
    "blob": "de08042e86eee400b63ef5988016f52967302ed1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db257ac745ed1cd2b5e55f12a2a3e475feefdd3118f1ae4903adfbf4dbc930c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31ebcfa23264ce3d595681505fe2de29ab49306973bab43773cbd40b609c7faf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLatticeLociOfDecodeEq {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target) :
    PreservesLatticeLoci source target :=
  { lookupEquiv := preservesOfDecodeEq hdecode
    preservesLookup := ⟨preservesOfDecodeEq hdecode⟩
    sliceForward := transportSlice hdecode
    sliceBackward := transportSlice hdecode.symm
    forwardBackward := transportSlice_roundtrip_forward hdecode
    backwardForward := transportSlice_roundtrip_backward hdecode
    containsForward := transportSlice_contains_forward hdecode
    containsBackward := transportSlice_contains_backward hdecode }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de08042e86eee400b63ef5988016f52967302ed1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
