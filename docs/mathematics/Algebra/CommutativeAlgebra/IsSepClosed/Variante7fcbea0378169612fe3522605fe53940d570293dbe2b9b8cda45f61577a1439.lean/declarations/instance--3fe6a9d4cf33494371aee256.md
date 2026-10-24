# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f00920ac0cd400b7cb7b7c614db1a5e1ba205e3d2c3961c13a0c920cd4e4b7f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3fe6a9d4cf33494371aee256",
  "source": {
    "blob": "03c0065f44cc517ece88df6ea876d1768b0d32fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fe6a9d4cf33494371aee256fd5f3fda2d271dc2b5ae7b8dbcd2273e13a8dbe5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f00920ac0cd400b7cb7b7c614db1a5e1ba205e3d2c3961c13a0c920cd4e4b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsSepClosure.isAlgClosure_of_perfectField
    [Algebra k K] [IsSepClosure k K] [PerfectField k] : IsAlgClosure k K :=
  have halg : Algebra.IsAlgebraic k K := IsSepClosure.separable.isAlgebraic
  haveI := halg.perfectField; inferInstance

/-- If `k` is perfect, `K` is an algebraic closure of `k`,
then it is also a separable closure of `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c0065f44cc517ece88df6ea876d1768b0d32fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
