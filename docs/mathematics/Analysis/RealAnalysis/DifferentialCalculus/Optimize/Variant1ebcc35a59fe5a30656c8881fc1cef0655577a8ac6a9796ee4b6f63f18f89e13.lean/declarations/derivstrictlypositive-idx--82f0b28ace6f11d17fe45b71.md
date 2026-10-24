# derivStrictlyPositive_idx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:923de9f4f9451872bad0b7248eccd26f02c5d8315c49267ff0a5f0792d648225",
  "kind": "def",
  "lexical_name": "derivStrictlyPositive_idx",
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
  "slug": "derivstrictlypositive-idx--82f0b28ace6f11d17fe45b71",
  "source": {
    "blob": "13ce0bc1ad94c0c16abdcf48b492ef9cc7f6edbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 523,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82f0b28ace6f11d17fe45b716395ef4599d48d1503a8e59192237ef40e24363b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:923de9f4f9451872bad0b7248eccd26f02c5d8315c49267ff0a5f0792d648225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def derivStrictlyPositive_idx (e : Expr) (ρ : IntervalEnv) (idx : Nat) : Bool :=
  let dI := derivInterval e ρ idx
  0 < dI.lo

/-- Check if derivative interval along `idx` is strictly negative -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variant1ebcc35a59fe5a30656c8881fc1cef0655577a8ac6a9796ee4b6f63f18f89e13.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ce0bc1ad94c0c16abdcf48b492ef9cc7f6edbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
