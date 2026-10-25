# UniqueVerifiedRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc595f0c0250e8bea0406a3686cd07e533c38f3c47225b804c206cce99a6460b",
  "kind": "structure",
  "lexical_name": "UniqueVerifiedRoot",
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
  "slug": "uniqueverifiedroot--879a25dd994ca1d346e302bf",
  "source": {
    "blob": "d27d01921b9b06bf6c9fdcc91da9637dd54677c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:879a25dd994ca1d346e302bfff1ab3611f9efa58411c26b9b1930a9984d436d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc595f0c0250e8bea0406a3686cd07e533c38f3c47225b804c206cce99a6460b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniqueVerifiedRoot (expr : Expr) extends VerifiedRoot expr where
  /-- Proof of uniqueness within the interval -/
  unique : ∀ x y : ℝ, x ∈ interval → y ∈ interval →
           Expr.eval (fun _ => x) expr = 0 →
           Expr.eval (fun _ => y) expr = 0 →
           x = y

/-! ## Integration -/

/-- A verified integral bound.

This structure bundles:
- Lower and upper bounds on the integral
- A proof that the true integral lies within these bounds
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d27d01921b9b06bf6c9fdcc91da9637dd54677c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
