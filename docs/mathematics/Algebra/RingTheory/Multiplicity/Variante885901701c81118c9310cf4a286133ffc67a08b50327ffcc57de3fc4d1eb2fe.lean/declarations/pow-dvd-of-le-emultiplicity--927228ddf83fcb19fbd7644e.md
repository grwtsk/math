# pow_dvd_of_le_emultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6fdbd03-d7c7-9fc3-188d-2c512b41227a",
  "kind": "theorem",
  "lexical_name": "pow_dvd_of_le_emultiplicity",
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
  "slug": "pow-dvd-of-le-emultiplicity--927228ddf83fcb19fbd7644e",
  "source": {
    "blob": "d319a66f624f21bcbd084d259349eee8de0b0975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 257,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:927228ddf83fcb19fbd7644e2bb06c383785a9fb90f3849cd0311230d1c86829",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6fdbd03-d7c7-9fc3-188d-2c512b41227a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_dvd_of_le_emultiplicity {k : ℕ} (hk : k ≤ emultiplicity a b) :
    a ^ k ∣ b := by classical
  cases k
  · simp
  unfold emultiplicity at hk
  split at hk
  · norm_cast at hk
    simpa using (Nat.find_min _ (lt_of_succ_le hk))
  · apply FiniteMultiplicity.not_iff_forall.mp ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d319a66f624f21bcbd084d259349eee8de0b0975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
