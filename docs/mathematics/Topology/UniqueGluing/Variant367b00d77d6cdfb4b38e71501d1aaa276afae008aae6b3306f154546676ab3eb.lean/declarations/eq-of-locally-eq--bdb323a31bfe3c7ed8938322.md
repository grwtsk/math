# eq_of_locally_eq₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfb18f4c-f577-df80-8f99-d8bb6967fff0",
  "kind": "theorem",
  "lexical_name": "eq_of_locally_eq₂",
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
  "slug": "eq-of-locally-eq--bdb323a31bfe3c7ed8938322",
  "source": {
    "blob": "0a450ecb9c3a077330b2a03bda875b8166dfed94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 245,
    "path": "GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdb323a31bfe3c7ed893832246b61a4c25f08bdc98cc235e3634f3ccc24dbc39",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfb18f4c-f577-df80-8f99-d8bb6967fff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_locally_eq₂ {U₁ U₂ V : Opens X} (i₁ : U₁ ⟶ V) (i₂ : U₂ ⟶ V) (hcover : V ≤ U₁ ⊔ U₂)
    (s t : ToType (F.1.obj (op V))) (h₁ : F.1.map i₁.op s = F.1.map i₁.op t)
    (h₂ : F.1.map i₂.op s = F.1.map i₂.op t) : s = t := by
  fapply F.eq_of_locally_eq' fun t : Bool => if t then U₁ else U₂
  · exact fun i => if h : i then eqToHom (ite_eq_left h) ≫ i₁ else eqToHom (ite_eq_right h) ≫ i₂
  · refine le_trans hcover ?_
    rw [sup_le_iff]
    constructor
    · exact le_iSup (fun t : Bool => if t then U₁ else U₂) true
    · exact le_iSup (fun t : Bool => if t then U₁ else U₂) false
  · rintro ⟨_ | _⟩
    any_goals exact h₁
    any_goals exact h₂

variable {F} {U} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a450ecb9c3a077330b2a03bda875b8166dfed94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
