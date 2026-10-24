# unique_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a788bf200f4db0f407866e996b30e08b0eab68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3effb85-22b6-21f3-b80b-6a9a79714d08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5da94d4e-2459-758e-87d3-750220b0041f",
  "kind": "theorem",
  "lexical_name": "unique_irreducible",
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
  "slug": "unique-irreducible--b2bed56c05f8416312e5a919",
  "source": {
    "blob": "f6a788bf200f4db0f407866e996b30e08b0eab68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 340,
    "path": "GRWTSK/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2bed56c05f8416312e5a9190000a15d9a71609b0c1705bbd2c5131839881f46",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5da94d4e-2459-758e-87d3-750220b0041f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_irreducible [PreValuationRing R] ⦃p q : R⦄ (hp : Irreducible p)
    (hq : Irreducible q) : Associated p q := by
  have := dvd_total p q
  rw [Irreducible.dvd_comm hp hq, or_self_iff] at this
  exact associated_of_dvd_dvd (Irreducible.dvd_symm hq hp this) this

variable (R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationRing/Variant2432c56eef36af4fcc3aa0dec76f0204be2c41c4cd55abc7812668371769db5f.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a788bf200f4db0f407866e996b30e08b0eab68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
