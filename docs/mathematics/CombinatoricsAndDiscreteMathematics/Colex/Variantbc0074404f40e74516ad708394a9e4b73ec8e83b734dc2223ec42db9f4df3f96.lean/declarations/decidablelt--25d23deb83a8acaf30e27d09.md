# decidableLt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:101e487a3e6746d43f5e5915c3d4ca6e463a61b51cd4273511b7abb701dd7bae",
  "kind": "instance",
  "lexical_name": "decidableLt",
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
  "slug": "decidablelt--25d23deb83a8acaf30e27d09",
  "source": {
    "blob": "62879d18af2672e8cd1bf5ec9511c7a349235202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25d23deb83a8acaf30e27d096120f667610d324dbdff29f63f662b9b384c80ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:101e487a3e6746d43f5e5915c3d4ca6e463a61b51cd4273511b7abb701dd7bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableLt [LinearOrder α] : ∀ {A B : Finset.Colex α}, Decidable (A < B) :=
  show ∀ {A B : Finset α}, Decidable (A.toColex < B.toColex) from @fun A B =>
    decidable_of_iff' (∃ k ∈ B, (∀ x ∈ A ∪ B, k < x → (x ∈ A ↔ x ∈ B)) ∧ k ∉ A)
      (by
        rw [Colex.lt_def]
        apply exists_congr
        simp only [mem_union, exists_prop, or_imp, and_comm (a := _ ∈ B), and_assoc]
        intro k
        refine' and_congr_left' (forall_congr' _)
        tauto)
#align colex.decidable_lt Colex.decidableLt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62879d18af2672e8cd1bf5ec9511c7a349235202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
