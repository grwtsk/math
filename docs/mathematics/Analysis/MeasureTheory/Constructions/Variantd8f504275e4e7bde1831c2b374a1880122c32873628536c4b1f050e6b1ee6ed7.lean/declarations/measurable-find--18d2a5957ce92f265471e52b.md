# Measurable.find

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33870184-ed8e-86e3-42b3-8e4834956d6e",
  "kind": "theorem",
  "lexical_name": "Measurable.find",
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
  "slug": "measurable-find--18d2a5957ce92f265471e52b",
  "source": {
    "blob": "d2d85571d9a38f90bf9905fa7340626026458abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 474,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d2a5957ce92f265471e52b446b70c6066d57a58d42aa765e5ad0b93655c445",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33870184-ed8e-86e3-42b3-8e4834956d6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measurable.find {_ : MeasurableSpace α} {f : ℕ → α → β} {p : ℕ → α → Prop}
    [∀ n, DecidablePred (p n)] (hf : ∀ n, Measurable (f n)) (hp : ∀ n, MeasurableSet { x | p n x })
    (h : ∀ x, ∃ n, p n x) : Measurable fun x => f (Nat.find (h x)) x :=
  have : Measurable fun p : α × ℕ => f p.2 p.1 := measurable_from_prod_countable fun n => hf n
  this.comp (Measurable.prodMk measurable_id (measurable_find h hp))

/-- Let `t i` be a countable covering of a set `T` by measurable sets. Let `f i : t i → β` be a
family of functions that agree on the intersections `t i ∩ t j`. Then the function
`Set.iUnionLift t f _ _ : T → β`, defined as `f i ⟨x, hx⟩` for `hx : x ∈ t i`, is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2d85571d9a38f90bf9905fa7340626026458abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
