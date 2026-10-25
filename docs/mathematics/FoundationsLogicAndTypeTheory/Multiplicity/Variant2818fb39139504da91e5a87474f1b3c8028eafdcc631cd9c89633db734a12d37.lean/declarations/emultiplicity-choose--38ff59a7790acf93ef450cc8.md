# emultiplicity_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:684a30ec-d07b-df04-0a96-3d5b37cd87c5",
  "kind": "theorem",
  "lexical_name": "emultiplicity_choose",
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
  "slug": "emultiplicity-choose--38ff59a7790acf93ef450cc8",
  "source": {
    "blob": "915e34398f6e50c4b34cd3deaf11f4482edb6b00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38ff59a7790acf93ef450cc8aeb82164ad695c7022b9fc91582f67fab8264524",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:684a30ec-d07b-df04-0a96-3d5b37cd87c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_choose {p n k b : ℕ} (hp : p.Prime) (hkn : k ≤ n) (hnb : log p n < b) :
    emultiplicity p (choose n k) = #{i ∈ Ico 1 b | p ^ i ≤ k % p ^ i + (n - k) % p ^ i} := by
  have := Nat.sub_add_cancel hkn
  convert @emultiplicity_choose' p (n - k) k b hp _
  · rw [this]
  exact this.symm ▸ hnb

/-- A lower bound on the multiplicity of `p` in `choose n k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2818fb39139504da91e5a87474f1b3c8028eafdcc631cd9c89633db734a12d37.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915e34398f6e50c4b34cd3deaf11f4482edb6b00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
