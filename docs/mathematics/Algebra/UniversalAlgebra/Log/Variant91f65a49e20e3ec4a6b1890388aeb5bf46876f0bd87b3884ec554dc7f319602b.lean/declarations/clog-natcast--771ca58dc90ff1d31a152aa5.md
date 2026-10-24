# clog_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f1863e3-e718-fae1-b551-86e5a23c46c9",
  "kind": "theorem",
  "lexical_name": "clog_natCast",
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
  "slug": "clog-natcast--771ca58dc90ff1d31a152aa5",
  "source": {
    "blob": "5955f26a9e263e8573d0e5f7369c358859367390",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 239,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:771ca58dc90ff1d31a152aa53178359cc200e935d4da709dc65ce2cedd7966ae",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f1863e3-e718-fae1-b551-86e5a23c46c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clog_natCast (b : ℕ) (n : ℕ) : clog b (n : R) = Nat.clog b n := by
  cases' n with n
  · simp [clog_of_right_le_one]
  · rw [clog_of_one_le_right, (Nat.ceil_eq_iff (Nat.succ_ne_zero n)).mpr] <;> simp
#align int.clog_nat_cast Int.clog_natCast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5955f26a9e263e8573d0e5f7369c358859367390` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
