# edgeDensity_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ba563e415e267f2fe64aaacd79e76eb9d1adda2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7f39ec15816da094b225734e134b7d177349303c1e05cd9cc799dc9f5021e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0df68fed-34ff-a2cf-c90e-a4111716deb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35c3ae32-1497-949f-5055-4439f4ed8db3",
  "kind": "theorem",
  "lexical_name": "edgeDensity_comm",
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
  "slug": "edgedensity-comm--0cf55e606fc69dbcd7355034",
  "source": {
    "blob": "7ba563e415e267f2fe64aaacd79e76eb9d1adda2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 377,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantcb7f39ec15816da094b225734e134b7d177349303c1e05cd9cc799dc9f5021e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cf55e606fc69dbcd7355034cec1c1ff8cbef8b0a4f96fa276790ed2243ebdff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Density/Variantcb7f39ec15816da094b225734e134b7d177349303c1e05cd9cc799dc9f5021e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c3ae32-1497-949f-5055-4439f4ed8db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeDensity_comm (s t : Finset α) : G.edgeDensity s t = G.edgeDensity t s :=
  have := G.symm
  Rel.edgeDensity_comm s t

end SimpleGraph

/- Porting note: Commented out `Tactic` namespace.
namespace Tactic

open Positivity

/-- Extension for the `positivity` tactic: `Rel.edgeDensity` and `SimpleGraph.edgeDensity` are
always nonnegative. -/
@[positivity]
unsafe def positivity_edge_density : expr → tactic strictness
  | q(Rel.edgeDensity $(r) $(s) $(t)) =>
    nonnegative <$> mk_mapp `` Rel.edgeDensity_nonneg [none, none, r, none, s, t]
  | q(SimpleGraph.edgeDensity $(G) $(s) $(t)) =>
    nonnegative <$> mk_mapp `` SimpleGraph.edgeDensity_nonneg [none, G, none, s, t]
  | e =>
    pp e >>=
      fail ∘
        format.bracket "The expression `"
          "` isn't of the form `Rel.edgeDensity r s t` nor `SimpleGraph.edgeDensity G s t`"

end Tactic
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Density/Variantcb7f39ec15816da094b225734e134b7d177349303c1e05cd9cc799dc9f5021e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantcb7f39ec15816da094b225734e134b7d177349303c1e05cd9cc799dc9f5021e1.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba563e415e267f2fe64aaacd79e76eb9d1adda2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
