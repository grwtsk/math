# toSimpleGraphOfSimpleGraphIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00c69b359676fe7337ada4533cdcdcf22eeef0de7a72b0dfc958f2c8a2118a86",
  "kind": "def",
  "lexical_name": "toSimpleGraphOfSimpleGraphIso",
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
  "slug": "tosimplegraphofsimplegraphiso--af45c18cc322750f017bfac9",
  "source": {
    "blob": "35bb96d453119678e12b1054c29d857573bf3316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 140,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant341666ec8e8630473a370653efb4d82a5468a8e20b49de4d3df449a7ab17b0b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af45c18cc322750f017bfac97d4f85e12ff23face78bef2059fac8bcb85eaa26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant341666ec8e8630473a370653efb4d82a5468a8e20b49de4d3df449a7ab17b0b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00c69b359676fe7337ada4533cdcdcf22eeef0de7a72b0dfc958f2c8a2118a86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSimpleGraphOfSimpleGraphIso (G : SimpleGraph α) :
    (toSimpleGraph (ofSimpleGraph G)) ≃g G := by
  use Equiv.Set.univ α
  refine ⟨fun h ↦ ⟨fun h' ↦ h.ne (congrArg Subtype.val h'), ?_⟩, fun ⟨_, h⟩ ↦ ?_⟩ <;>
    revert h <;> rw [ofSimpleGraph_adj_iff] <;> exact id

end toSimpleGraph

end Graph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant341666ec8e8630473a370653efb4d82a5468a8e20b49de4d3df449a7ab17b0b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant341666ec8e8630473a370653efb4d82a5468a8e20b49de4d3df449a7ab17b0b1.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bb96d453119678e12b1054c29d857573bf3316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
