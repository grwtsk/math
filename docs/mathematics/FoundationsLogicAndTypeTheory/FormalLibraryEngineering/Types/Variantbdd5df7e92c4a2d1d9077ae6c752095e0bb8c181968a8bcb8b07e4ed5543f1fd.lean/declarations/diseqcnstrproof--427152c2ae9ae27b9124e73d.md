# DiseqCnstrProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0c1b3872e1a9d60b824a49220929a92b5dd0497c4bdcb9b7766ffa7092ba7bd",
  "kind": "inductive",
  "lexical_name": "DiseqCnstrProof",
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
  "slug": "diseqcnstrproof--427152c2ae9ae27b9124e73d",
  "source": {
    "blob": "db740b8cc8e51f457b0d8c661e5b0f50a2acb514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:427152c2ae9ae27b9124e73d6704b6a77ce623359526e5d87761893efa9df586",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0c1b3872e1a9d60b824a49220929a92b5dd0497c4bdcb9b7766ffa7092ba7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DiseqCnstrProof where
  | /-- An disequality `a != 0` coming from the core. That is, `(a = 0) = False` in the core. -/
    core0 (a : Expr) (zero : Expr)
  | /--
    An disequality `a ≠ b` coming from the core. That is, `(a = b) = False` in the core.
    `p₁` and `p₂` are the polynomials corresponding to `a` and `b`.
    -/
    core (a b : Expr) (p₁ p₂ : Poly)
  | coreToInt (a b : Expr) (toIntThm : Expr) (lhs rhs : Int.Internal.Linear.Expr)
  | norm (c : DiseqCnstr)
  | divCoeffs (c : DiseqCnstr)
  | neg (c : DiseqCnstr)
  | subst (x : Var) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | reorder (c : DiseqCnstr)
  | commRingNorm (c : DiseqCnstr) (e : CommRing.RingExpr) (p : CommRing.Poly)

/--
A proof of `False`.
Remark: We will later add support for a backtracking search inside of cutsat.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db740b8cc8e51f457b0d8c661e5b0f50a2acb514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
