# structureAuditKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49b0ed49321e0d51cc9ed8e222d5dcd6235b9d096590618d8adac197dec29239",
  "kind": "def",
  "lexical_name": "structureAuditKind",
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
  "slug": "structureauditkind--e1e09629ef3fe3c3f16bb402",
  "source": {
    "blob": "2440471825c822a6fe68422bdf6994b17df071df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 14,
    "path": "GRWTSK/Topology/GeneralTopology/De544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797bBoundaryRieszKer/Variantde544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1e09629ef3fe3c3f16bb4023735e32ad83c5f99d6a10303be06ff35479f8b43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/De544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797bBoundaryRieszKer/Variantde544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49b0ed49321e0d51cc9ed8e222d5dcd6235b9d096590618d8adac197dec29239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def structureAuditKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/De544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797bBoundaryRieszKer/Variantde544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/De544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797bBoundaryRieszKer/Variantde544d102ecf3e239eedd90f0789d1f85df57d92d992d255b21213a0a579797b.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2440471825c822a6fe68422bdf6994b17df071df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
