# degree_degLexDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d6a160-eabd-62b8-65c0-17a9e1eb437d",
  "kind": "theorem",
  "lexical_name": "degree_degLexDegree",
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
  "slug": "degree-deglexdegree--216bfc380ca3e1669505ce51",
  "source": {
    "blob": "5ad8ca2b92a71de03c96debcf7c14d86aa2a36ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:216bfc380ca3e1669505ce511e1a1fee8f2daa69d9d9b98bc2906711f065a6b2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d6a160-eabd-62b8-65c0-17a9e1eb437d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_degLexDegree : (degLex.degree f).degree = f.totalDegree := by
  by_cases hf : f = 0
  · simp [hf]
  apply le_antisymm
  · exact le_totalDegree (degLex.degree_mem_support hf)
  · unfold MvPolynomial.totalDegree
    apply Finset.sup_le
    intro b hb
    exact DegLex.monotone_degree (degLex.le_degree hb)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ad8ca2b92a71de03c96debcf7c14d86aa2a36ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
