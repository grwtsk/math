# prototypeActiveRegion_is_least

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a86abc7-17e5-c1cd-0244-8ec2a40f1fea",
  "kind": "theorem",
  "lexical_name": "prototypeActiveRegion_is_least",
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
  "slug": "prototypeactiveregion-is-least--84fe227d4a81e3d2c1866c56",
  "source": {
    "blob": "12e9ed84201b7cd3158f3b7520384b4c24e380b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prototype/Variantdd28108dd5d04ff72d19c0dd1202563a232995dc8552e36f0fd8ff1a7d5731d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84fe227d4a81e3d2c1866c56de2e8e8455ee671816dfae298330cb5a45cae6ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prototype/Variantdd28108dd5d04ff72d19c0dd1202563a232995dc8552e36f0fd8ff1a7d5731d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a86abc7-17e5-c1cd-0244-8ec2a40f1fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prototypeActiveRegion_is_least :
    prototypeAttentionRoots ⊆ prototypeActiveRegion.activeModels ∧
    (∀ {model}, model ∈ prototypeActiveRegion.activeModels →
      prototypeRegistry.dependencyGraph.dependsOn model ⊆
        prototypeActiveRegion.activeModels) ∧
    prototypeActiveRegion.omittedDependencies = ∅ ∧
    ∀ other : ActiveModelRegion prototypeRegistry,
      prototypeAttentionRoots ⊆ other.activeModels →
      (∀ {model}, model ∈ other.activeModels →
        prototypeRegistry.dependencyGraph.dependsOn model ⊆
          other.activeModels) →
      prototypeActiveRegion.activeModels ⊆ other.activeModels :=
  ActiveModelRegion.activeClosure_is_least_dependencyClosedRegion
    prototypeRegistry prototypeAttentionRoots
    (fun model _ => prototypeRegistry.Version model)
    (fun _ _ => rfl)
    ⟨"attention:five-model-prototype:dependency-closure-v1"⟩

/-- Compact completion predicate for the exact finite structural layer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prototype/Variantdd28108dd5d04ff72d19c0dd1202563a232995dc8552e36f0fd8ff1a7d5731d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prototype/Variantdd28108dd5d04ff72d19c0dd1202563a232995dc8552e36f0fd8ff1a7d5731d3.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e9ed84201b7cd3158f3b7520384b4c24e380b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
