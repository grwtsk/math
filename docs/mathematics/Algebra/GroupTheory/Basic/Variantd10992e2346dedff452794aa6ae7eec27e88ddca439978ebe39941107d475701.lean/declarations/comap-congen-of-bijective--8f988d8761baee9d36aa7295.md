# comap_conGen_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1dfaf61-ae47-b362-1b96-48a110f23e69",
  "kind": "theorem",
  "lexical_name": "comap_conGen_of_bijective",
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
  "slug": "comap-congen-of-bijective--8f988d8761baee9d36aa7295",
  "source": {
    "blob": "1d5e7e78a84506c535b66aa9c75cf419fdf49c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 126,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f988d8761baee9d36aa7295b12e704b104328814f555c983ebc42671c3e043e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1dfaf61-ae47-b362-1b96-48a110f23e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_conGen_of_bijective {M N : Type*} [Mul M] [Mul N] (f : M → N)
    (hf : Function.Bijective f) (H : ∀ (x y : M), f (x * y) = f x * f y) (rel : N → N → Prop) :
    Con.comap f H (conGen rel) = conGen (fun x y ↦ rel (f x) (f y)) :=
  comap_conGen_equiv (MulEquiv.ofBijective (MulHom.mk f H) hf) rel

end

section MulOneClass

variable [MulOneClass M] [MulOneClass N] [MulOneClass P] (c : Con M)

/-- The submonoid of `M × M` defined by a congruence relation on a monoid `M`. -/
@[to_additive (attr := coe) "The `AddSubmonoid` of `M × M` defined by an additive congruence
relation on an `AddMonoid` `M`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5e7e78a84506c535b66aa9c75cf419fdf49c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
