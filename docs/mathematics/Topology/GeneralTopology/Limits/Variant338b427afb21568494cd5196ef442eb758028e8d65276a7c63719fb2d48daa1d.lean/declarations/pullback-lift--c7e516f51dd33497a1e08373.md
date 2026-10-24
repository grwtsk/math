# pullback.lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdc2287aaa667a3f828443214efa0e26b0dfce9caee16da255c3491ebea22d53",
  "kind": "def",
  "lexical_name": "pullback.lift",
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
  "slug": "pullback-lift--c7e516f51dd33497a1e08373",
  "source": {
    "blob": "493c277fecc94ee98f27892b1872aa0df203ed68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 233,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7e516f51dd33497a1e08373b479cb79cde0484e4e3fb429f710b824ca422607",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdc2287aaa667a3f828443214efa0e26b0dfce9caee16da255c3491ebea22d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullback.lift {Z : CompHausLike P} (a : Z ⟶ X) (b : Z ⟶ Y) (w : a ≫ f = b ≫ g) :
    Z ⟶ pullback f g :=
  TopCat.ofHom
  { toFun := fun z ↦ ⟨⟨a z, b z⟩, by apply_fun (fun q ↦ q z) at w; exact w⟩
    continuous_toFun := by fun_prop }

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493c277fecc94ee98f27892b1872aa0df203ed68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
