# HasBasis.tendstoIxxClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb5b1680-076d-17dd-8702-7d7afef2fc8b",
  "kind": "theorem",
  "lexical_name": "HasBasis.tendstoIxxClass",
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
  "slug": "hasbasis-tendstoixxclass--1f0d7470bb6f0f1416969e85",
  "source": {
    "blob": "0bf134fabd165e48d23d9e76971153c64f6a01fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f0d7470bb6f0f1416969e853f0d43d9fab67d21f1122d2c82c3ed8872e8eab6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb5b1680-076d-17dd-8702-7d7afef2fc8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.tendstoIxxClass {ι : Type*} {p : ι → Prop} {s} {l : Filter α}
    (hl : l.HasBasis p s) {Ixx : α → α → Set α}
    (H : ∀ i, p i → ∀ x ∈ s i, ∀ y ∈ s i, Ixx x y ⊆ s i) : TendstoIxxClass Ixx l l :=
  ⟨(hl.prod_self.tendsto_iff hl.smallSets).2 fun i hi => ⟨i, hi, fun _ h => H i hi _ h.1 _ h.2⟩⟩

variable [Preorder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf134fabd165e48d23d9e76971153c64f6a01fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
