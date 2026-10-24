# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d998eeae4be720b9143c227ef216da7b52f9135fb50e55985c14a94aa6e68b3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a80c237bee73dae0d60919d9",
  "source": {
    "blob": "c5d7be09de4acdbdc278277ff512aaf560befb86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 90,
    "path": "GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a80c237bee73dae0d60919d9663af5073d350529f8a49a7c758ace51a46f6b7e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d998eeae4be720b9143c227ef216da7b52f9135fb50e55985c14a94aa6e68b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FloorRing ℤ[ε] :=
  FloorRing.ofFloor _ (fun p => if (p.coeff 0 : ℤ[ε]) ≤ p then p.coeff 0 else p.coeff 0 - 1)
    fun p q => by
    simp_rw [← not_lt, not_iff_not]
    constructor
    · split_ifs with h
      · rintro ⟨_ | n, hn⟩
        · apply (sub_one_lt _).trans _
          simp at hn
          rwa [intCast_coeff_zero] at hn
        · dsimp at hn
          simp [hn.1 _ n.zero_lt_succ]
          rw [intCast_coeff_zero]; simp
      · exact fun h' => cast_lt.1 ((not_lt.1 h).trans_lt h')
    · split_ifs with h
      · exact fun h' => h.trans_le (cast_le.2 <| sub_one_lt_iff.1 h')
      · exact fun h' => ⟨0, by simp; rwa [intCast_coeff_zero]⟩

/-- The ordered ring homomorphisms from `ℤ[ε]` to `ℤ` that "forgets" the `ε`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d7be09de4acdbdc278277ff512aaf560befb86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
