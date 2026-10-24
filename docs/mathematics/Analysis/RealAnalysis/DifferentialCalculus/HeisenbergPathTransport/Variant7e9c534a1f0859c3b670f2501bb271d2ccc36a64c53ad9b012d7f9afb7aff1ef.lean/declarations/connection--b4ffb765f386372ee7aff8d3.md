# connection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:718d6958ff23f5a4e035b0146410501fd0434590e98b85bd5611154236b2a18a",
  "kind": "def",
  "lexical_name": "connection",
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
  "slug": "connection--b4ffb765f386372ee7aff8d3",
  "source": {
    "blob": "d15ef3ca28240d25847483c2b78d88a93691f3ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4ffb765f386372ee7aff8d3eff19b33b56ef8369469c349730d299c55d49624",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:718d6958ff23f5a4e035b0146410501fd0434590e98b85bd5611154236b2a18a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def connection (p : Vector) : Vector →ₗ[ℝ] ℝ where
  toFun := beta p
  map_add' v w := by simp only [beta, determinant, Prod.fst_add, Prod.snd_add]; ring
  map_smul' t v := by
    change (p.1 * (t * v.2) - p.2 * (t * v.1)) / 2 =
      t * ((p.1 * v.2 - p.2 * v.1) / 2)
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant7e9c534a1f0859c3b670f2501bb271d2ccc36a64c53ad9b012d7f9afb7aff1ef.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d15ef3ca28240d25847483c2b78d88a93691f3ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
