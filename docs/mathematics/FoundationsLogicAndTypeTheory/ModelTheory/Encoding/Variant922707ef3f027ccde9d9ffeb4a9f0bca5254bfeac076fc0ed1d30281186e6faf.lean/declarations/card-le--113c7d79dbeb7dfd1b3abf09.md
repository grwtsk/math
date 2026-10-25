# card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07dcce6e-666c-35d0-4055-9f1165b662cb",
  "kind": "theorem",
  "lexical_name": "card_le",
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
  "slug": "card-le--113c7d79dbeb7dfd1b3abf09",
  "source": {
    "blob": "1ac4fb1a268703e7335bde941cd936a6404bfe64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:113c7d79dbeb7dfd1b3abf09d472dd2cfa2bab2e0ce95d74c6012b5d4f5d33e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07dcce6e-666c-35d0-4055-9f1165b662cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le : #(Σ n, L.BoundedFormula α n) ≤
    max ℵ₀ (Cardinal.lift.{max u v} #α + Cardinal.lift.{u'} L.card) := by
  refine lift_le.1 (BoundedFormula.encoding.card_le_card_list.trans ?_)
  rw [mk_list_eq_max_mk_aleph0, lift_max, lift_aleph0, lift_max, lift_aleph0, max_le_iff]
  refine ⟨?_, le_max_left _ _⟩
  rw [mk_sum, Term.card_sigma, mk_sum, ← add_eq_max le_rfl, mk_sum, mk_nat]
  simp only [lift_add, lift_lift, lift_aleph0]
  rw [← add_assoc, add_comm, ← add_assoc, ← add_assoc, aleph0_add_aleph0, add_assoc,
    add_eq_max le_rfl, add_assoc, card, Symbols, mk_sum, lift_add, lift_lift, lift_lift]

section Countable

variable [Countable α] [Countable L.Symbols]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac4fb1a268703e7335bde941cd936a6404bfe64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
