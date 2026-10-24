# IsDynNetIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bbe0aafe64dbca571350d356c66f8bc65cccfb74c8e7b4ff9a2179ed17fcf8f",
  "kind": "def",
  "lexical_name": "IsDynNetIn",
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
  "slug": "isdynnetin--4b5ca3ef7a7e918a3a5926fa",
  "source": {
    "blob": "4beeb9daf4a1a4179fe4aa1aac3b502e00aa9b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b5ca3ef7a7e918a3a5926fab23074a493cd07b6a9a144f09b15ab273677ce3a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bbe0aafe64dbca571350d356c66f8bc65cccfb74c8e7b4ff9a2179ed17fcf8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsDynNetIn (T : X → X) (F : Set X) (U : Set (X × X)) (n : ℕ) (s : Set X) : Prop :=
  s ⊆ F ∧ s.PairwiseDisjoint fun x : X ↦ ball x (dynEntourage T U n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4beeb9daf4a1a4179fe4aa1aac3b502e00aa9b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
