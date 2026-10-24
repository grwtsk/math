# Coprime.gcd_mul_left_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03faa36e-568e-c909-958e-94487e01ac39",
  "kind": "theorem",
  "lexical_name": "Coprime.gcd_mul_left_cancel",
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
  "slug": "coprime-gcd-mul-left-cancel--fa132228d12cc5eac09ad117",
  "source": {
    "blob": "850acdd142cdbf01392032deb17292307a293c74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 212,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa132228d12cc5eac09ad117246d68cde8a09a26b16eb39fec0c92efcb74fd0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03faa36e-568e-c909-958e-94487e01ac39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Coprime.gcd_mul_left_cancel (m : ℕ+) {n k : ℕ+} :
    k.Coprime n → (k * m).gcd n = m.gcd n := by
  intro h; apply eq; simp only [gcd_coe, mul_coe]
  apply Nat.coprime.gcd_mul_left_cancel; simpa
#align pnat.coprime.gcd_mul_left_cancel PNat.Coprime.gcd_mul_left_cancel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850acdd142cdbf01392032deb17292307a293c74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
