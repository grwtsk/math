# exists_setup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a095d447-8dfb-d23d-81bb-6b425b8cf81a",
  "kind": "theorem",
  "lexical_name": "exists_setup",
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
  "slug": "exists-setup--e17be9ffbd6a80d4be447496",
  "source": {
    "blob": "337d2bd2599ed392d14954020c2faeca06f17926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e17be9ffbd6a80d4be4474961bf0762ebd43eb9a62b0e0343cb2a8f301a85848",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a095d447-8dfb-d23d-81bb-6b425b8cf81a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_setup [Finite S] (C : Set (Set S)) (hC : IsComponent (PrimaryEdge P) C)
    (ho : ∃ r ∈ C, SignedPath (PrimaryEdge P) r r true)
    (ht : ∃ I J K, ProfileTriple P I J K ∧ I ∈ C ∧ J ∈ C ∧ K ∈ C) :
    ∃ Γ γ, ProofContext Γ γ ∧ Nonempty (LogicSetup P Γ γ C) := by
  let _ := Fintype.ofFinite S
  obtain ⟨Γ,hv,⟨W⟩⟩ := WitnessFamily.exists_family (P := P)
  have hc : ProofContext Γ (fun _ => .data) := by intro n A hn hm; cases hm
  obtain ⟨Δ,δ,e,hΔ,hτ⟩ := W.terminal_network hC hv hc
  let W' := W.rename e
  obtain ⟨r,hr,ho⟩ := ho
  obtain ⟨I,J,K,ht,hI,hJ,hK⟩ := ht
  obtain ⟨R,hR⟩ := ProofWrapper.Formed.of_path W' hC hJ hI (hC.all_parities hr ho hJ hI false)
  obtain ⟨R',hR'⟩ := ProofWrapper.Formed.of_path W' hC hK hJ (hC.all_parities hr ho hK hJ false)
  let qs (A : Set S) (hA : DirectLayer P C A) : QuantifierRoute W' C J A :=
    (QuantifierRoute.exists_route hC hr ho hJ hA).some
  exact ⟨Δ,δ,hΔ,⟨⟨W',hτ,J,I,K,ht,hI,hJ,hK,R,hR,R',hR',qs⟩⟩⟩

variable (L : LogicSetup P Γ γ C) {A B : Expr S}

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337d2bd2599ed392d14954020c2faeca06f17926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
