# toTrivSqZeroExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fe857f87c80309ebc2cdcbf7a245145533e77e731ff7de41d8b385b39872214",
  "kind": "def",
  "lexical_name": "toTrivSqZeroExt",
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
  "slug": "totrivsqzeroext--0bae4bf58327a40d9f6572fc",
  "source": {
    "blob": "e2a814c043d81108cb7adeb5d8f4c9e6f0d91d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bae4bf58327a40d9f6572fcc3542ed87e938ddafa98882e6df4f655d86be0b0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fe857f87c80309ebc2cdcbf7a245145533e77e731ff7de41d8b385b39872214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTrivSqZeroExt [Module Rᵐᵒᵖ M] [IsCentralScalar R M] :
    ExteriorAlgebra R M →ₐ[R] TrivSqZeroExt R M :=
  lift R ⟨TrivSqZeroExt.inrHom R M, fun m => TrivSqZeroExt.inr_mul_inr R m m⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a814c043d81108cb7adeb5d8f4c9e6f0d91d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
