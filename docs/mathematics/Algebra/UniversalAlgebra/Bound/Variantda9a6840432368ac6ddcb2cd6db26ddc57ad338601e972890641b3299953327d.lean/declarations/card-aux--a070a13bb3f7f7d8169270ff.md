# card_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:485a27d0-2f97-ed28-df03-fe49cff28719",
  "kind": "theorem",
  "lexical_name": "card_aux₁",
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
  "slug": "card-aux--a070a13bb3f7f7d8169270ff",
  "source": {
    "blob": "4332d6ba099c16cabeb3bd96a8a641be0381df80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 150,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a070a13bb3f7f7d8169270ff398f8786811852642e3046ad0e6ffc8426f4ad71",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:485a27d0-2f97-ed28-df03-fe49cff28719`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_aux₁ (hucard : #u = m * 4 ^ #P.parts + a) :
    (4 ^ #P.parts - a) * m + a * (m + 1) = #u := by
  rw [hucard, mul_add, mul_one, ← add_assoc, ← add_mul,
    Nat.sub_add_cancel ((Nat.le_succ _).trans a_add_one_le_four_pow_parts_card), mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4332d6ba099c16cabeb3bd96a8a641be0381df80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
