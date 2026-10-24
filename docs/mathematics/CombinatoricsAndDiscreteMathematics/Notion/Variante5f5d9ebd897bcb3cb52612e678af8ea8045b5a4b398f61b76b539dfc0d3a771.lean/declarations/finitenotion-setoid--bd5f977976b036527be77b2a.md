# FiniteNotion.setoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:767da8b198ecc37ae2433ffe5388e82a42306988c1633be4c904f17d47285fb6",
  "kind": "def",
  "lexical_name": "FiniteNotion.setoid",
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
  "slug": "finitenotion-setoid--bd5f977976b036527be77b2a",
  "source": {
    "blob": "f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd5f977976b036527be77b2ab19ecd854cdcbb8963e6da2d8d1e700a1f9141a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:767da8b198ecc37ae2433ffe5388e82a42306988c1633be4c904f17d47285fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteNotion.setoid {Object Test Value : Type*}
    (notion : FiniteNotion Object Test Value) (budget : ℕ) : Setoid Object where
  r := notion.Equivalent budget
  iseqv := ⟨fun _ _ _ _ => rfl, fun h t hm hc => (h t hm hc).symm,
    fun hxy hyz t hm hc => (hxy t hm hc).trans (hyz t hm hc)⟩

/-- Exact executable comparison, restricted to the declared finite test family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variante5f5d9ebd897bcb3cb52612e678af8ea8045b5a4b398f61b76b539dfc0d3a771.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f520d84a0ccfea9f902f5dc8c6ac0a2f027d71a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
