# Result article standard

Local attribution: grwtsk contributors.

Mathematical result articles live beside their subjects under
[`docs/mathematics`](../mathematics/index.md). A leaf states one coherent result;
a composite states a conclusion whose proof connects several branches. Both
have one canonical article identity and can be previewed in every reviewed
subject to which they belong. Shared articles and dependencies are counted once.

## Article form

Use the order of a mathematical journal article: title, byline, self-contained
abstract, numbered statements with exact hypotheses, proof, sources, and
revision information. Add explicit composition and verification sections so
the scope of formal evidence remains inspectable. This is a project article
form and makes no claim of journal publication or affiliation.

The maintained body contains these sections:

1. Abstract.
2. Statements and hypotheses, with numbered statements and fully qualified declarations.
3. Proof, including the correspondence between the argument and its declarations.
4. Composition, or an explicit statement that this is a leaf.
5. Verification and trust boundary.
6. Sources and missing bridges.
7. Revision and issuance.

Existing authored prose is preserved. Migrating an article adds metadata and
clarifies its mathematical scope; it does not replace an argument with a
generated scaffold or infer a stronger theorem from its title.

## Authoritative metadata

Store a `result_article` record in JSON-form YAML front matter: a JSON object
between `---` delimiters at the start of the Markdown file. This supports a
single authoritative article rather than a separately editable catalogue.
The schema identity is `grwtsk.result-article/1`.

| Field | Meaning |
|---|---|
| `id` | Persistent article identity, independent of title and location. |
| `slug`, `aliases` | Readable canonical slug and retained previous slugs; collisions are errors. |
| `kind` | `leaf` or `composite`. |
| `title`, `author`, `abstract` | Article title, exactly `grwtsk contributors`, and self-contained abstract. |
| `subjects` | Primary stable subject ID and additional proposed/reviewed associations with rationale. |
| `statements` | Exact hypotheses, conclusion, classification, fully qualified declarations, and source pins per statement. |
| `verification` | Recorded status, exact scope, evidence references and pins, axiom policy, and unresolved premises. |
| `composition` | Composite roots, component article IDs, conclusion, bridge status/declarations, and unresolved premises; null for a leaf. |
| `issue` | Positive revision, canonical date, and actual issuance timestamp, separately recorded. |
| `metrics` | Optional observations with value, method, version, coverage, and provenance. |

Source pins retain repository, full commit, repository-relative source path,
and full blob hash. Preserve upstream public bylines and licensing. Each
paper-derived article also updates the
[paper-to-formalization register](literature/reading-background/paper-to-formalization-references.md)
with its exact theorem or method, hypotheses, declarations, pins, verification
commands/receipts or `NOT_RUN`, and missing bridges.

Statement classifications distinguish imported mathematics,
kernel-verified bridges, source proof candidates, conditional interfaces,
finite evidence, analogies, and unresolved premises. These classifications
describe different claims and must remain separate.

## Verification and composition

The verification status is one of `NOT_RUN`, `UNASSESSED`, `SCOPED_EVIDENCE`,
or `KERNEL_VERIFIED`. An article records what evidence covers; parsing its
metadata does not replay, authenticate, or extend that evidence. Exact
commands, source bytes, dependency/toolchain pins, permitted axioms, and
excluded scope remain explicit. A successful metadata check establishes
structural consistency only.

A composite names the union of declaration roots and its component articles,
then states the explicit bridge to its conclusion. Verified components alone
do not prove that bridge. Kernel-verified composite metadata requires
source-pinned bridge declarations among the article's statements and evidence
covering the claimed connection. Conditional premises and finite scope remain
visible in ancestor previews.

New drafts leave canonical and issuance dates null until those events are
actually recorded. A canonical mathematical date does not imply an issuance
event, and rewriting metadata does not establish fresh verification.

## Previews and rankings

Ancestor previews derive the title, abstract, canonical link, subjects,
verification scope, unresolved premises, and composition from this record.
Only reviewed additional subject associations enter public subject lists.
Existing source guides without structured metadata retain their prose and
have explicitly unassessed previews with unavailable fields identified.
Their source links and historical verification prose are not inferred to be
verified declaration roots.

The [publication and ranking contract](result-publication-contract.md)
defines the three-step verification graph, numerical profile, evidence gates,
and unavailable-score behavior. Metric records retain their method, profile
version, coverage, and provenance. A dependency score describes graph
structure; it does not change a theorem's hypotheses, establish originality,
or certify correctness.

Executable scaffolding, validation, templates, and generated previews are
owned by
[`grwtsk/noeaaeue`](https://github.com/grwtsk/noeaaeue/tree/main/bindings/mathematics/organization).
That implementation preserves article bodies, rejects identity/slug collisions
and invalid composition references, and creates new articles exclusively under
the mathematical documentation tree without overwriting authored files.
