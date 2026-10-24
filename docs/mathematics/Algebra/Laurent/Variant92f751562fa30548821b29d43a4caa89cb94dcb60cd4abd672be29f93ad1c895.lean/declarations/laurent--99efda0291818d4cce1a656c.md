# laurent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f480f077a988f565c414ec1638da35cb628961e5cf3086fb410e64f709042748",
  "kind": "def",
  "lexical_name": "laurent",
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
  "slug": "laurent--99efda0291818d4cce1a656c",
  "source": {
    "blob": "919a18595e3f832960e4ed051256ec7a1cb0c40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 74,
    "path": "GRWTSK/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99efda0291818d4cce1a656c361c0a5143620a52be66c5b21e105230082f2b21",
  "verification": {
    "reference": "docs/verification/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f480f077a988f565c414ec1638da35cb628961e5cf3086fb410e64f709042748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def laurent : RatFunc R →ₐ[R] RatFunc R :=
  RatFunc.mapAlgHom (.ofLinearMap (taylor r) (taylor_one _) (taylor_mul _))
    (taylor_mem_nonZeroDivisors _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Laurent/Variant92f751562fa30548821b29d43a4caa89cb94dcb60cd4abd672be29f93ad1c895.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `919a18595e3f832960e4ed051256ec7a1cb0c40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
