# apply_sub_id_partialSum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb406e72-c43e-b761-e1e4-97c5387b9eef",
  "kind": "lemma",
  "lexical_name": "apply_sub_id_partialSum_eq",
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
  "slug": "apply-sub-id-partialsum-eq--a71c3799047f696e8f3c543c",
  "source": {
    "blob": "1d6533a78c2dc55557f6ca09a80c1b6a3826edcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 385,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a71c3799047f696e8f3c543c9689bb03315b9032fb9458f78058683c799fe1fb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb406e72-c43e-b761-e1e4-97c5387b9eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_sub_id_partialSum_eq (n : ℕ) (g : G) (x : V) :
    (ρ g - LinearMap.id (R := k) (M := V)) ((Fin.last _).partialSum
      (fun (j : Fin (n + 1)) => ρ (g ^ (j : ℕ)) x)) = ρ (g ^ (n + 1)) x - x := by
  induction n with
  | zero => simp [Fin.partialSum]
  | succ n h =>
    have : Fin.init (fun (j : Fin (n + 2)) => ρ (g ^ (j : ℕ)) x) =
      fun (j : Fin (n + 1)) => ρ (g ^ (j : ℕ)) x := by ext; simp [Fin.init]
    rw [← Fin.succ_eq_last_succ.2 rfl, Fin.partialSum_succ, ← Fin.partialSum_init, map_add,
      this, h]
    simp [pow_succ']

end AddCommGroup

section MulAction

variable (k : Type*) [Semiring k] (G : Type*) [Monoid G] (H : Type*) [MulAction G H]

/-- A `G`-action on `H` induces a representation `G →* End(k[H])` in the natural way. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant062c165d7098b7f70878a4a1dabca180854f7e746d2d348f78a01608bee6eb95.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6533a78c2dc55557f6ca09a80c1b6a3826edcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
