# momentOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25b4ce66893a04ed8272ea78a432b151dcf66481262067681f2b2f34c18a4488",
  "kind": "def",
  "lexical_name": "momentOne",
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
  "slug": "momentone--fff82dea039dd0e2579d934c",
  "source": {
    "blob": "79aa29b63ebbc7f89f5ee4bd447052be8ad3586f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/NumberTheory/UnitJetCorrection/Varianta1d817dd1e3d650cee855177ee445ae1606c8d8458c27e15a1c0d2fceeba6398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fff82dea039dd0e2579d934ca74b91c286d787ed49408037d39b68ebaecd88e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/UnitJetCorrection/Varianta1d817dd1e3d650cee855177ee445ae1606c8d8458c27e15a1c0d2fceeba6398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25b4ce66893a04ed8272ea78a432b151dcf66481262067681f2b2f34c18a4488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def momentOne (U : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (μ : ArithmeticFunction ℝ) d * Real.log d / d
/-- The at one in this module, with the following exact parameterization.

def atOne (U : ℕ) (kappa : ℝ) (q : ℕ) : ℝ := momentZero U - (momentOne U + kappa) / Real.log q
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/UnitJetCorrection/Varianta1d817dd1e3d650cee855177ee445ae1606c8d8458c27e15a1c0d2fceeba6398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/UnitJetCorrection/Varianta1d817dd1e3d650cee855177ee445ae1606c8d8458c27e15a1c0d2fceeba6398.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79aa29b63ebbc7f89f5ee4bd447052be8ad3586f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
