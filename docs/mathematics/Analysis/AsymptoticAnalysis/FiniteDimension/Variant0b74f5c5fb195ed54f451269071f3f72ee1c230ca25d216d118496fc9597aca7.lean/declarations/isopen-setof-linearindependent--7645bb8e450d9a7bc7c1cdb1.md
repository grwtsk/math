# isOpen_setOf_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df7319b8-b979-3c91-7208-7df8aeeb9ecb",
  "kind": "theorem",
  "lexical_name": "isOpen_setOf_linearIndependent",
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
  "slug": "isopen-setof-linearindependent--7645bb8e450d9a7bc7c1cdb1",
  "source": {
    "blob": "a6217642fb765a3f0af997f15bae67ff2364b280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 268,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant0b74f5c5fb195ed54f451269071f3f72ee1c230ca25d216d118496fc9597aca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7645bb8e450d9a7bc7c1cdb1b467d85f041b0f90592893571cc965cbe7b59807",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant0b74f5c5fb195ed54f451269071f3f72ee1c230ca25d216d118496fc9597aca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df7319b8-b979-3c91-7208-7df8aeeb9ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_setOf_linearIndependent {ι : Type*} [Finite ι] :
    IsOpen { f : ι → E | LinearIndependent 𝕜 f } :=
  isOpen_iff_mem_nhds.2 fun _ => LinearIndependent.eventually

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant0b74f5c5fb195ed54f451269071f3f72ee1c230ca25d216d118496fc9597aca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant0b74f5c5fb195ed54f451269071f3f72ee1c230ca25d216d118496fc9597aca7.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6217642fb765a3f0af997f15bae67ff2364b280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
