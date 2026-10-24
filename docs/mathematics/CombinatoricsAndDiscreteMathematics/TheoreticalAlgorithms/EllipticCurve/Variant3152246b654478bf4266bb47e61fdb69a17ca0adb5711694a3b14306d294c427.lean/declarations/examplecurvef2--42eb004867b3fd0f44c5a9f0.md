# exampleCurveF2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1fdf6ca7d31db6f85c81bee1b5ef374cad6ed5fcda7b995c4a30711669befac",
  "kind": "def",
  "lexical_name": "exampleCurveF2",
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
  "slug": "examplecurvef2--42eb004867b3fd0f44c5a9f0",
  "source": {
    "blob": "9e9701f0591679118e2e9cca08fc285cc69ef64f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 267,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variant3152246b654478bf4266bb47e61fdb69a17ca0adb5711694a3b14306d294c427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42eb004867b3fd0f44c5a9f0b5332082096509b9c4112f5f534b9ef6b3372d5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variant3152246b654478bf4266bb47e61fdb69a17ca0adb5711694a3b14306d294c427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1fdf6ca7d31db6f85c81bee1b5ef374cad6ed5fcda7b995c4a30711669befac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleCurveF2 : ShortWeierstrass F2.field where
  A := ⟨1, by decide⟩
  B := ⟨1, by decide⟩
  discriminant := ⟨1, by decide⟩
  nonsingular := by decide
  charNeTwoThree := False
  charBoundary := [
    "This is a finite symbolic example over F2.",
    "The short-Weierstrass characteristic restriction char ≠ 2,3 is not satisfied."
  ]

/-- A small symbolic curve over `F3`: `y^2 = x^3 + x + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variant3152246b654478bf4266bb47e61fdb69a17ca0adb5711694a3b14306d294c427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variant3152246b654478bf4266bb47e61fdb69a17ca0adb5711694a3b14306d294c427.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9701f0591679118e2e9cca08fc285cc69ef64f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
