# references_decoded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e60de15-0598-a948-4d48-d4e2e5c9a08c",
  "kind": "theorem",
  "lexical_name": "references_decoded",
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
  "slug": "references-decoded--9f6530213b9405898ce63e65",
  "source": {
    "blob": "7585644ab7d689bab3a93dcba1e6a9a4a21b190f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 117,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f6530213b9405898ce63e655557a36aed94b3a250712067d15e9feec9217b8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e60de15-0598-a948-4d48-d4e2e5c9a08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem references_decoded (state : State V Key) (hstate : WellFormed state) :
    List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
      state.dictionary[reference.2]? = some entry.2)
      state.references (realEntries state hstate) := by
  have main (references : List (Key × Nat)) :
      ∀ entries, references.mapM (decodeReference state.dictionary) = some entries →
        List.Forall₂ (fun reference entry => reference.1 = entry.1 ∧
          state.dictionary[reference.2]? = some entry.2) references entries := by
    induction references with
    | nil =>
      intro entries hdecoded
      have hequal : entries = [] := (Option.some.inj hdecoded).symm
      subst entries
      exact List.Forall₂.nil
    | cons reference references ih =>
      intro entries hdecoded
      cases hlookup : state.dictionary[reference.2]? with
      | none => simp [List.mapM_cons, decodeReference, hlookup] at hdecoded
      | some initial =>
        cases htail : references.mapM (decodeReference state.dictionary) with
        | none => simp [List.mapM_cons, decodeReference, hlookup, htail] at hdecoded
        | some tail =>
          simp only [List.mapM_cons, decodeReference, hlookup, Option.map_some,
            Option.bind_eq_bind, Option.bind, htail] at hdecoded
          have hequal : entries = (reference.1, initial) :: tail :=
            (Option.some.inj hdecoded).symm
          subst entries
          exact List.Forall₂.cons ⟨rfl, hlookup⟩ (ih tail htail)
  apply main state.references
  change unpack (rawPacked state) = some (realEntries state hstate)
  rw [← decode_eq_unpack state hstate]
  exact decode_realEntries state hstate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7585644ab7d689bab3a93dcba1e6a9a4a21b190f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
