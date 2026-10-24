# Subpresheaf.sheafify_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70ebaea3-3c89-1987-e028-e727e4f0243d",
  "kind": "theorem",
  "lexical_name": "Subpresheaf.sheafify_le",
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
  "slug": "subpresheaf-sheafify-le--4621f720add661a09a65d76c",
  "source": {
    "blob": "a4f42d15b4341888766c55a0cce3253e6f91e891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4621f720add661a09a65d76cd43a88545dbbadb80165d36f312ea9542842ced9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ebaea3-3c89-1987-e028-e727e4f0243d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subpresheaf.sheafify_le (h : G ≤ G') (hF : Presieve.IsSheaf J F)
    (hG' : Presieve.IsSheaf J G'.toPresheaf) : G.sheafify J ≤ G' := by
  intro U x hx
  convert ((G.sheafifyLift (Subpresheaf.homOfLe h) hG').app U ⟨x, hx⟩).2
  apply (hF _ hx).isSeparatedFor.ext
  intro V i hi
  have :=
    congr_arg (fun f : G.toPresheaf ⟶ G'.toPresheaf => (NatTrans.app f (op V) ⟨_, hi⟩).1)
      (G.to_sheafifyLift (Subpresheaf.homOfLe h) hG')
  convert this.symm
  rw [← Subpresheaf.nat_trans_naturality]
  rfl

section Image

variable (J) in
/-- A morphism factors through the sheafification of the image presheaf. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianteb31afc6780e41b8bfadc65af2743beabafd2e0e327140ff79d2d95ed1b97c9d.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4f42d15b4341888766c55a0cce3253e6f91e891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
