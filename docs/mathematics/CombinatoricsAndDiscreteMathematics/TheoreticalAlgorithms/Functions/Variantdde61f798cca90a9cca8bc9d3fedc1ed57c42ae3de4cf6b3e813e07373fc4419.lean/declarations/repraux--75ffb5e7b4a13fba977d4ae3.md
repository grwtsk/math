# reprAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e440220d2a2bd3bcfed785924a3fc96b7b98b8e072d1473d1d42c75f19f96869",
  "kind": "def",
  "lexical_name": "reprAux",
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
  "slug": "repraux--75ffb5e7b4a13fba977d4ae3",
  "source": {
    "blob": "0b4a760469022c68d978150a9839501985a6a57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantdde61f798cca90a9cca8bc9d3fedc1ed57c42ae3de4cf6b3e813e07373fc4419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75ffb5e7b4a13fba977d4ae3912b868b7ac4005d65ad7ac4bbc6467d638ada4e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantdde61f798cca90a9cca8bc9d3fedc1ed57c42ae3de4cf6b3e813e07373fc4419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e440220d2a2bd3bcfed785924a3fc96b7b98b8e072d1473d1d42c75f19f96869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reprAux [Repr α] [Repr β] (m : List (Σ _ : α, β)) : String :=
  String.join <|
    -- Porting note: No `List.qsort`, so convert back and forth to an `Array`.
    Array.toList <| Array.qsort (lt := fun x y => x < y)
      (m.map fun x => s!"{(repr <| Sigma.fst x)} => {repr <| Sigma.snd x}, ").toArray

/-- Produce a string for a given `TotalFunction`.
The output is of the form `[x₀ => f x₀, .. xₙ => f xₙ, _ => y]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantdde61f798cca90a9cca8bc9d3fedc1ed57c42ae3de4cf6b3e813e07373fc4419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantdde61f798cca90a9cca8bc9d3fedc1ed57c42ae3de4cf6b3e813e07373fc4419.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b4a760469022c68d978150a9839501985a6a57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
