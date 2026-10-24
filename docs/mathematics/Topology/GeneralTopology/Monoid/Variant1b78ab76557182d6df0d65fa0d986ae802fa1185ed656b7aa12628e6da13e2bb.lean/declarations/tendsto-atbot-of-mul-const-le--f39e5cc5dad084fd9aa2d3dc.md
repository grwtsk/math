# Tendsto.atBot_of_mul_const_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe5b47c1-c2ce-cd8d-6d06-c5943645ecd2",
  "kind": "theorem",
  "lexical_name": "Tendsto.atBot_of_mul_const_le",
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
  "slug": "tendsto-atbot-of-mul-const-le--f39e5cc5dad084fd9aa2d3dc",
  "source": {
    "blob": "652eb661b8e7c0f2e110bebb030dd2c1af10b2bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f39e5cc5dad084fd9aa2d3dc699d9f62c03d43b373f3c0e379bf9e3b84ab6b13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe5b47c1-c2ce-cd8d-6d06-c5943645ecd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.atBot_of_mul_const_le (hg : ∃ C, ∀ x, C ≤ g x)
    (hfg : Tendsto (fun x ↦ f x * g x) l atBot) : Tendsto f l atBot :=
  Tendsto.atTop_of_mul_le_const (M := Mᵒᵈ) hg hfg

end OrderedCancelCommMonoid

section OrderedCancelAddCommMonoid

variable [AddCommMonoid M] [PartialOrder M] [IsOrderedCancelAddMonoid M]
  {l : Filter α} {f g : α → M}

@[deprecated Tendsto.atTop_of_isBoundedUnder_le_add (since := "2025-02-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652eb661b8e7c0f2e110bebb030dd2c1af10b2bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
