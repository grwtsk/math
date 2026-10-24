# certifyDivisorSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c026e7e6467807803392bf05c57f8ecf89a5da3171a62b6183908fc08c471f2",
  "kind": "def",
  "lexical_name": "certifyDivisorSplit",
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
  "slug": "certifydivisorsplit--3e190798c0d40ce825f8f34e",
  "source": {
    "blob": "209bed08fc2a3433333b0f842db039b743c437c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 337,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e190798c0d40ce825f8f34e34348fc93b5875c6d5130e2b71ff0e3a940ad463",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c026e7e6467807803392bf05c57f8ecf89a5da3171a62b6183908fc08c471f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certifyDivisorSplit {R d : ℕ} (hd : 1 < d) (hproper : d < R) (hdiv : d ∣ R) :
    DivisorSplit R where
  divisor := d
  quotient := R / d
  divisor_gt_one := hd
  divisor_lt := hproper
  quotient_gt_one := by
    have heq : R = d * (R / d) := (Nat.mul_div_cancel' hdiv).symm
    by_contra h
    have hle : R / d ≤ 1 := by omega
    nlinarith
  equality := (Nat.mul_div_cancel' hdiv).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `209bed08fc2a3433333b0f842db039b743c437c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
