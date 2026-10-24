# flatMapM_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:688053d9-9ccf-ce5f-4534-0dbd7dc2809a",
  "kind": "theorem",
  "lexical_name": "flatMapM_subtype",
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
  "slug": "flatmapm-subtype--159cd597f9fd52470059326e",
  "source": {
    "blob": "e534dc0c099bb59e3ff9233459b0c0160027bbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 593,
    "path": "GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159cd597f9fd52470059326e0a8edc1aaac61812cd9c922a0f8686119776df8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:688053d9-9ccf-ce5f-4534-0dbd7dc2809a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem flatMapM_subtype [Monad m] [LawfulMonad m] {p : α → Prop} {l : List { x // p x }}
    {f : { x // p x } → m (List β)} {g : α → m (List β)} (hf : ∀ x h, f ⟨x, h⟩ = g x) :
    (l.flatMapM f) = l.unattach.flatMapM g := by
  induction l with
  | nil => simp [flatMapM_nil]
  | cons a l ih => simp only [flatMapM_cons, hf, ih, bind_pure_comp, unattach_cons]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e534dc0c099bb59e3ff9233459b0c0160027bbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
