# comp_coprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1512fc48-f4b9-dd07-14b7-e158d90b4da6",
  "kind": "theorem",
  "lexical_name": "comp_coprod",
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
  "slug": "comp-coprod--de4c32c45ee589eff074c032",
  "source": {
    "blob": "25fe9851d5df8dfcf85457f821579e438206caae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 673,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de4c32c45ee589eff074c032c504a8325ee28c27e3f1058e46a9c8c8073c74cc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1512fc48-f4b9-dd07-14b7-e158d90b4da6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_coprod {Q : Type*} [CommMonoid Q] (h : P →* Q) (f : M →* P) (g : N →* P) :
    h.comp (f.coprod g) = (h.comp f).coprod (h.comp g) :=
  ext fun x => by simp
#align monoid_hom.comp_coprod MonoidHom.comp_coprod
#align add_monoid_hom.comp_coprod AddMonoidHom.comp_coprod

end Coprod

end MonoidHom

namespace MulEquiv

section

variable [MulOneClass M] [MulOneClass N]

/-- The equivalence between `M × N` and `N × M` given by swapping the components
is multiplicative. -/
@[to_additive prodComm
      "The equivalence between `M × N` and `N × M` given by swapping the
      components is additive."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variant3493847e30eacf9faefd7fd655bf1429eb2c5fb4d47b57106f2307d3793816c1.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25fe9851d5df8dfcf85457f821579e438206caae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
