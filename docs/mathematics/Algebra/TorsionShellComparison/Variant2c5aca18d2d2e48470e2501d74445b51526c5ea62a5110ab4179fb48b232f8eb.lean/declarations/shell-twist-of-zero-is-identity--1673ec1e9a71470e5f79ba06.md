# shell_twist_of_zero_is_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d23ef775-dcc9-43c1-958e-cddd75c6a1f7",
  "kind": "theorem",
  "lexical_name": "shell_twist_of_zero_is_identity",
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
  "slug": "shell-twist-of-zero-is-identity--1673ec1e9a71470e5f79ba06",
  "source": {
    "blob": "e1b6413eef79762e570a974e50f354222c3730f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1673ec1e9a71470e5f79ba064719b712a612795df1a7e349cba90c6944d36472",
  "verification": {
    "reference": "docs/verification/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d23ef775-dcc9-43c1-958e-cddd75c6a1f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_twist_of_zero_is_identity
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s) :
    R.map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s :=
  R.map_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TorsionShellComparison/Variant2c5aca18d2d2e48470e2501d74445b51526c5ea62a5110ab4179fb48b232f8eb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b6413eef79762e570a974e50f354222c3730f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
