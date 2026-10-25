# wpLaurentApproxV1_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ae98054-fa3c-b5d3-dfa7-1baa780daad2",
  "kind": "theorem",
  "lexical_name": "wpLaurentApproxV1_spec",
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
  "slug": "wplaurentapproxv1-spec--9801e766d61a3dfa3e54c084",
  "source": {
    "blob": "e837c8786d24459b908b193c065d037913da204b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 437,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9801e766d61a3dfa3e54c0843d20548197e288a394ce8dec4042aaf757565d1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ae98054-fa3c-b5d3-dfa7-1baa780daad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wpLaurentApproxV1_spec
    (z : ComplexFixedV1) (g2Raw g3Raw : Int) (approximate : ComplexFixedV1)
    (accepted : wpLaurentApproxV1 z g2Raw g3Raw = some approximate) :
    z.Valid ∧ FitsSignedBits 64 g2Raw ∧ FitsSignedBits 64 g3Raw ∧
      z.isZero = false ∧
      checkedWpLaurentPolynomialV1 z g2Raw g3Raw = some approximate := by
  simp only [wpLaurentApproxV1] at accepted
  split at accepted <;> try contradiction
  split at accepted <;> try contradiction
  simp_all

/-- A checked finite polynomial value is not evidence that it equals the
analytic Weierstrass function outside a separately certified error theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/XYZElliptic/Variantfc57277988165888ff5a594a26dd80ffc56664fc048271c8ff31a0b97c20deee.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e837c8786d24459b908b193c065d037913da204b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
