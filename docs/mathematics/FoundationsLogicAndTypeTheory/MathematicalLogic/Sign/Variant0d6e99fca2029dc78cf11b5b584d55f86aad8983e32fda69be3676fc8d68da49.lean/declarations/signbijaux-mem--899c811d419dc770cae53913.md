# signBijAux_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f886cbb-78ac-7ca7-878b-e932c975e4d6",
  "kind": "theorem",
  "lexical_name": "signBijAux_mem",
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
  "slug": "signbijaux-mem--899c811d419dc770cae53913",
  "source": {
    "blob": "78c5c6732f9c48a4db6c180e171215eea347839d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:899c811d419dc770cae539132d4e34c40920715902fa4d3dc63a8ece8cdd5410",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f886cbb-78ac-7ca7-878b-e932c975e4d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signBijAux_mem {n : ℕ} {f : Perm (Fin n)} :
    ∀ a : Σ _ : Fin n, Fin n, a ∈ finPairsLT n → signBijAux f a ∈ finPairsLT n :=
  fun ⟨a₁, a₂⟩ ha => by
    unfold signBijAux
    split_ifs with h
    · exact mem_finPairsLT.2 h
    · exact mem_finPairsLT.2
        ((le_of_not_gt h).lt_of_ne fun h => (mem_finPairsLT.1 ha).ne (f.injective h.symm))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78c5c6732f9c48a4db6c180e171215eea347839d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
