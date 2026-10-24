# IsCovariantDerivativeOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c30c05c7893bd416216ce670beb6b40eabd4997f7d4d7e9425a93fa4c3c408ba",
  "kind": "structure",
  "lexical_name": "IsCovariantDerivativeOn",
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
  "slug": "iscovariantderivativeon--8c46122eff3c31b0bb052307",
  "source": {
    "blob": "ba2001d70aecd37f77d8576635be665896eff63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 100,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c46122eff3c31b0bb0523073917a4b7e0ced5ca38d2bd30dc861812ef66fba7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c30c05c7893bd416216ce670beb6b40eabd4997f7d4d7e9425a93fa4c3c408ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsCovariantDerivativeOn
    (cov : (Π x : M, V x) → (Π x : M, TangentSpace I x →L[𝕜] V x))
    (s : Set M := Set.univ) : Prop where
  add {σ σ' : Π x : M, V x} {x}
    (hσ : MDiffAt (T% σ) x) (hσ' : MDiffAt (T% σ') x) (hx : x ∈ s := by trivial) :
    cov (σ + σ') x = cov σ x + cov σ' x
  leibniz {σ : Π x : M, V x} {g : M → 𝕜} {x}
    (hσ : MDiffAt (T% σ) x) (hg : MDiffAt g x) (hx : x ∈ s := by trivial) :
    cov (g • σ) x = g x • cov σ x + (d% g x).smulRight (σ x)

/--
A covariant derivative ∇ is called of class `C^k` iff, whenever `X` is a `C^k` section and `σ` a
`C^{k+1}` section, the result `∇_X σ` is a `C^k` section. This is a class so typeclass inference can
deduce this automatically. We will prove in a later file that any `C^(k+1)` covariant derivative
is `C^k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2001d70aecd37f77d8576635be665896eff63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
