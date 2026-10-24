# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98d59d8c68af516a33879ed6706fcf5018577ddceb1c9dd93141178325ed32b4",
  "kind": "example",
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
  "slug": "example--8797dfb360eec80b6fd74ff2",
  "source": {
    "blob": "0851dd803a5bac4ed8ad0064a4516f5dfa3330fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 188,
    "path": "GRWTSK/Algebra/Module/Variantc449e079e17df871293477f1848a2f2edd1592aff63820a24d7e055521cdb469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8797dfb360eec80b6fd74ff2269c98a6be664a562163f5c1f637e7f1a4d70d11",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleTheory/Variantc449e079e17df871293477f1848a2f2edd1592aff63820a24d7e055521cdb469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98d59d8c68af516a33879ed6706fcf5018577ddceb1c9dd93141178325ed32b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
    (h1 : a • x + b • y + c • z = 0)
    (h2 : a • μ • x + b • ν • y + c • ρ • z = 0)
    (h3 : a • μ • μ • x + b • ν • ν • y + c • ρ • ρ • z = 0) :
    (μ - ν) • (μ - ρ) • a • x = 0 ∧ (μ - ν) • (ν - ρ) • b • y = 0
      ∧ (μ - ρ) • (ν - ρ) • c • z = 0 := by
  refine ⟨?_, ?_, ?_⟩
  · linear_combination (norm := module) h3 - (ν + ρ) • h2 + ν • ρ • h1
  · linear_combination (norm := module) - h3 + (μ + ρ) • h2 - μ • ρ • h1
  · linear_combination (norm := module) h3 - (μ + ν) • h2 + μ • ν • h1

/--
error: ring failed, ring expressions not equal
V : Type u_1
K : Type u_2
t u v w x y z : V
a b c d e f μ ν ρ : K
inst✝² : AddCommGroup V
inst✝¹ : CommRing K
inst✝ : Module K V
⊢ a * 2 = 2
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleTheory/Variantc449e079e17df871293477f1848a2f2edd1592aff63820a24d7e055521cdb469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Module/Variantc449e079e17df871293477f1848a2f2edd1592aff63820a24d7e055521cdb469.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0851dd803a5bac4ed8ad0064a4516f5dfa3330fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
