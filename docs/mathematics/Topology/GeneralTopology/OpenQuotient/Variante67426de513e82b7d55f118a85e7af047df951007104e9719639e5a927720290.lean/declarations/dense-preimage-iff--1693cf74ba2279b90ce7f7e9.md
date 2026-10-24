# dense_preimage_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190a081c-6f6f-a6fa-48ce-4ae0ab667915",
  "kind": "theorem",
  "lexical_name": "dense_preimage_iff",
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
  "slug": "dense-preimage-iff--1693cf74ba2279b90ce7f7e9",
  "source": {
    "blob": "269521cb7bcc7b11fb63c8eb467290b808a3cd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1693cf74ba2279b90ce7f7e96cae089a7e878413100be9dfe4c1c8200f349131",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190a081c-6f6f-a6fa-48ce-4ae0ab667915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem dense_preimage_iff (h : IsOpenQuotientMap f) {s : Set Y} : Dense (f ⁻¹' s) ↔ Dense s :=
  ⟨fun hs ↦ h.surjective.denseRange.dense_of_mapsTo h.continuous hs (mapsTo_preimage _ _),
    fun hs ↦ hs.preimage h.isOpenMap⟩

end IsOpenQuotientMap

section Subquotient

variable {A B C D : Type*}
variable [TopologicalSpace A] [TopologicalSpace B] [TopologicalSpace C] [TopologicalSpace D]
variable (f : A → B) (g : C → D) (p : A → C) (q : B → D)

omit [TopologicalSpace C] in
/--
Given the following diagram with `f` inducing, `p` surjective,
`q` an open quotient map, and `g` injective. Suppose the image of `A` in `B` is stable
under the equivalence mod `q`, then the coinduced topology on `C` (from `A`)
coincides with the induced topology (from `D`).
```
A -f→ B
∣     ∣
p     q
↓     ↓
C -g→ D
```

A typical application is when `K ≤ H` are subgroups of `G`, then the quotient topology on `H/K`
is also the subspace topology from `G/K`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `269521cb7bcc7b11fb63c8eb467290b808a3cd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
