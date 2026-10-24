# _root_.GRWTSK.Topology.SubmonoidPresheaf.Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.CommRingCat.presheaf_restrict_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e2eba7c-1ada-7ebf-ba0e-7df27098beb1",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.SubmonoidPresheaf.Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.CommRingCat.presheaf_restrict_restrict",
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
  "slug": "root-grwtsk-topology-submonoidpresheaf-variant8fbb62d772f43752bc35249a71--9f8b1860f48886b18e3f4d2b",
  "source": {
    "blob": "1bc2af5c7919623710f8831682b9a257b58de714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f8b1860f48886b18e3f4d2b9f7362a6981ec788dc7ba89204d906d03f6cf0b1",
  "verification": {
    "reference": "docs/verification/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e2eba7c-1ada-7ebf-ba0e-7df27098beb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.SubmonoidPresheaf.Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.CommRingCat.presheaf_restrict_restrict (X : TopCat)
    {F : TopCat.Presheaf CommRingCat X}
    {U V W : Opens ↑X} (e₁ : U ≤ V := by restrict_tac) (e₂ : V ≤ W := by restrict_tac)
    (f : CommRingCat.carrier (F.obj (op W))) :
    f |_ V |_ U = f |_ U :=
  TopCat.Presheaf.restrict_restrict e₁ e₂ f

section SubmonoidPresheaf

open scoped nonZeroDivisors

variable {X : TopCat.{w}} {C : Type u} [Category.{v} C]

-- note: this was specialized to `CommRingCat` in #19757
/-- A subpresheaf with a submonoid structure on each of the components. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc2af5c7919623710f8831682b9a257b58de714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
