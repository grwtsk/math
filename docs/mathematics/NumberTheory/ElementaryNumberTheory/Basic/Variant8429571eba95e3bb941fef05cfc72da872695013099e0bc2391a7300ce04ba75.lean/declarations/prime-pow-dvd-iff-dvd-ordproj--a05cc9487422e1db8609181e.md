# Prime.pow_dvd_iff_dvd_ordProj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c8215a8-6b3e-2c76-596a-17eb75191479",
  "kind": "theorem",
  "lexical_name": "Prime.pow_dvd_iff_dvd_ordProj",
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
  "slug": "prime-pow-dvd-iff-dvd-ordproj--a05cc9487422e1db8609181e",
  "source": {
    "blob": "f9d5401d58708fe65e2b8b2cb94310a0513f412b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 199,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a05cc9487422e1db8609181e5287347b23b01e0baaf3a357fb6576d7dc92e6b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c8215a8-6b3e-2c76-596a-17eb75191479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.pow_dvd_iff_dvd_ordProj {p k n : ℕ} (pp : Prime p) (hn : n ≠ 0) :
    p ^ k ∣ n ↔ p ^ k ∣ ordProj[p] n := by
  rw [pow_dvd_pow_iff_le_right pp.one_lt, pp.pow_dvd_iff_le_factorization hn]

@[deprecated (since := "2024-10-24")]
alias Prime.pow_dvd_iff_dvd_ord_proj := Prime.pow_dvd_iff_dvd_ordProj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9d5401d58708fe65e2b8b2cb94310a0513f412b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
