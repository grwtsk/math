# Prime.eq_one_or_self_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd579212-d942-0340-6371-a2310db81c8e",
  "kind": "theorem",
  "lexical_name": "Prime.eq_one_or_self_of_dvd",
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
  "slug": "prime-eq-one-or-self-of-dvd--0b4c997d9995f348ff17b9ab",
  "source": {
    "blob": "26c68534934cefd62f0fc08e58bfa119b189ba7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b4c997d9995f348ff17b9abada9096dd7e8eca693fce1319c7f7b60ed7b37dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd579212-d942-0340-6371-a2310db81c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.eq_one_or_self_of_dvd {p : ℕ} (pp : p.Prime) (m : ℕ) (hm : m ∣ p) :
    m = 1 ∨ m = p := by
  obtain ⟨n, hn⟩ := hm
  have := pp.isUnit_or_isUnit hn
  rw [Nat.isUnit_iff, Nat.isUnit_iff] at this
  apply Or.imp_right _ this
  rintro rfl
  rw [hn, mul_one]
#align nat.prime.eq_one_or_self_of_dvd Nat.Prime.eq_one_or_self_of_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26c68534934cefd62f0fc08e58bfa119b189ba7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
