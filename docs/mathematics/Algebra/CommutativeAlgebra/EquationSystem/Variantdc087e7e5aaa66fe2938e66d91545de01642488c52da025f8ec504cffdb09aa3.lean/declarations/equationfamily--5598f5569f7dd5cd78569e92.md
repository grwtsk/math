# EquationFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c1a2e3fa504428063307027d3bb28852bf8ea42209afaf45782f33b129c5bbd",
  "kind": "structure",
  "lexical_name": "EquationFamily",
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
  "slug": "equationfamily--5598f5569f7dd5cd78569e92",
  "source": {
    "blob": "ab761e409b9cdb0943b34a0cefcffa5f1d32eb3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5598f5569f7dd5cd78569e928a94ce9559973d97b9936b402e8d2b95a7e6c368",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c1a2e3fa504428063307027d3bb28852bf8ea42209afaf45782f33b129c5bbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EquationFamily
    (Scale : Type u) (Variable : Type v) (K : Type w) [CommSemiring K] where
  system : Scale → EquationSystem Variable K
  transport :
    Scale → Scale → (Variable → K) → (Variable → K)
  transport_preserves :
    ∀ {source target} {point},
      (system source).IsSolution point →
        (system target).IsSolution
          (transport source target point)

/-- Transport a certified point through the declared polynomial family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantdc087e7e5aaa66fe2938e66d91545de01642488c52da025f8ec504cffdb09aa3.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab761e409b9cdb0943b34a0cefcffa5f1d32eb3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
